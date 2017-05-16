(**
 * Copyright (c) 2015, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the "hack" directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *
 *)

type handoff_options = {
  (** The name of the server to connect to. *)
  server_name : string;
  (** If server is dormant because it is waiting for Informant to start one,
   * set this to true to start a server anyway. *)
  force_dormant_start : bool;
  (** What to do if the server already has an existing persistent connection
   * when we try to connect? Depending on this flag, either the server will
   * tell it to abort, or our connection attempt will fail. *)
  force_stop_existing_persistent_connection: bool;
}

type command =
  | HANDOFF_TO_SERVER of handoff_options
  (** Shut down all servers and then the monitor. *)
  | SHUT_DOWN
