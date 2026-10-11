# Native QR research

This workflow runs the pinned, **unlogged-in official client for research only**
on a disposable Linux runner. It never scans/confirms the QR or sends a message.
It is not the standalone Go client and does not prove native CLI login.

The collector verifies the executable and every hook prefix before resuming the
owned child. It stops after a correlated request/frame/parsed response, or at the
240-second deadline, and terminates its owned process. Qt screen snapshots are
diagnostics from the empty runner profile. Child output is piped to Frida rather
than published in workflow logs.

The extended fixed profile captures the QR packet's Hybrid ECDH curve, public
peer point, native context strings, ephemeral private DER and raw pack parameters
only after full-byte QR request matching. They remain private encrypted research
evidence and must not be added to the public vector corpus.
The transport diagnostic is capped at 256 KiB and 128 events and records only
the clean process's connected port-80/443 descriptors. It is included in the
same encrypted archive immediately before the QR response, never in CI logs.

The guarded MMTLS hooks also capture bounded startup key derivation inputs,
derived traffic key/nonce pairs and serialized public trust keys. MMTLS uses a
32-byte native string layout, distinct from the business layer's libc++ strings.
This material is scoped to the clean spawned process before its first QR
response, with a 64-event / 256-KiB encoded budget; it is not account-session
capture and is never a backend for the independent Go runtime.

Only the AES-256-GCM CMS encrypted archive is uploaded, with one-day retention.
The public recipient certificate is committed; its matching private key stays
outside version control. Raw captures, pairing tokens, screenshots and client
state must never be committed or uploaded unencrypted. Download and decrypt into
a private ignored directory; check the decrypt command's exit status **before**
extracting or opening its output.

The workflow is limited to `nirvana9/wx` main pushes changing its research files,
or an explicit dispatch on main, with read-only repository permissions and no
persisted checkout credentials. The sample SHA-256 is checked before extraction;
package installation scripts are never run.

The public certificate is specific to the 2026-10-11 investigation. Replace it
with a fresh locally generated recipient before using the workflow in a new
investigation. Without the corresponding private key the archive cannot be read.
