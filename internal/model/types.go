// Package model contains account state shared by protocol, session and storage.
package model

import "time"

type Credentials struct {
	Version   uint32            `json:"version"`
	AccountID string            `json:"account_id"`
	DeviceID  []byte            `json:"device_id"`
	Secrets   map[string][]byte `json:"secrets"`
}

type Contact struct {
	ID       string `json:"id"`
	Nickname string `json:"nickname"`
	Remark   string `json:"remark"`
}

type ContactChange struct {
	Contact Contact
	Deleted bool
}

type Message struct {
	ID     string    `json:"id"`
	From   string    `json:"from"`
	To     string    `json:"to"`
	Text   string    `json:"text"`
	SentAt time.Time `json:"sent_at"`
}

type SyncBatch struct {
	Messages   []Message
	Contacts   []ContactChange
	NextCursor []byte
}

type State struct {
	Credentials    Credentials `json:"credentials"`
	Contacts       []Contact   `json:"contacts"`
	SyncCursor     []byte      `json:"sync_cursor"`
	SeenMessageIDs []string    `json:"seen_message_ids"`
	Pending        []Message   `json:"pending"`
}
