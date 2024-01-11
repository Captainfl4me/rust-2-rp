#![cfg_attr(not(any(feature = "std", feature = "wasm", test)), no_std)]
#![cfg_attr(nightly, feature(async_fn_in_trait, impl_trait_projections))]
#![cfg_attr(nightly, allow(stable_features, unknown_lints))]
#![allow(async_fn_in_trait)]
#![doc = include_str!("../README.md")]
#![allow(clippy::new_without_default)]
#![warn(missing_docs)]

//! ## Feature flags
#![doc = document_features::document_features!(feature_label = r#"<span class="stab portability"><code>{feature}</code></span>"#)]

// This mod MUST go first, so that the others see its macros.
pub(crate) mod fmt;

mod delay;
pub mod driver;
mod duration;
mod instant;
pub mod queue;
mod tick;
mod timer;

#[cfg(feature = "mock-driver")]
mod driver_mock;

#[cfg(feature = "mock-driver")]
pub use driver_mock::MockDriver;

#[cfg(feature = "std")]
mod driver_std;
#[cfg(feature = "wasm")]
mod driver_wasm;
#[cfg(feature = "generic-queue")]
mod queue_generic;

pub use delay::{block_for, Delay};
pub use duration::Duration;
pub use instant::Instant;
pub use timer::{with_timeout, Ticker, TimeoutError, Timer};

/// Ticks per second of the global timebase.
///
/// This value is specified by the [`tick-*` Cargo features](crate#tick-rate)
pub const TICK_HZ: u64 = tick::TICK_HZ;

const fn gcd(a: u64, b: u64) -> u64 {
    if b == 0 {
        a
    } else {
        gcd(b, a % b)
    }
}

pub(crate) const GCD_1K: u64 = gcd(TICK_HZ, 1_000);
pub(crate) const GCD_1M: u64 = gcd(TICK_HZ, 1_000_000);
pub(crate) const GCD_1G: u64 = gcd(TICK_HZ, 1_000_000_000);

#[cfg(feature = "defmt-timestamp-uptime")]
defmt::timestamp! {"{=u64:us}", Instant::now().as_micros() }
